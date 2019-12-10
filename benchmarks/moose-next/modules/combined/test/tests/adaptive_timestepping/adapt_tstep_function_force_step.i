# This is a test designed to evaluate the cabability of the
# IterationAdaptiveDT TimeStepper to adjust time step size according to
# a function.  For example, if the power input function for a BISON
# simulation rapidly increases or decreases, the IterationAdaptiveDT
# TimeStepper should take time steps small enough to capture the
# oscillation.

[GlobalParams]
  order = FIRST
  family = LAGRANGE
  block = 1
  volumetric_locking_correction = true
  displacements = 'disp_x disp_y disp_z'
[]

[Mesh]
  file = 1hex8_10mm_cube.e
[]

[Functions]
  [./Fiss_Function]
    type = PiecewiseLinear
    data_file = blip.csv
    format = columns
  [../]
[]

[Variables]
  [./disp_x]
  [../]

  [./disp_y]
  [../]

  [./disp_z]
  [../]

  [./temp]
    initial_condition = 300.0
  [../]
[]


[Modules/TensorMechanics/Master]
  [./all]
    strain = FINITE
    incremental = true
    eigenstrain_names = thermal_expansion
    add_variables  = true
    generate_output = 'vonmises_stress'
  [../]
[]


[Kernels]
  [./heat]
    type = HeatConduction
    variable = temp
  [../]

  [./heat_ie]
    type = HeatConductionTimeDerivative
    variable = temp
  [../]

  [./heat_source]
     type = HeatSource
     variable = temp
     value = 1.0
     function = Fiss_Function
  [../]
[]

[BCs]
 [./bottom_temp]
   type = DirichletBC
   variable = temp
   boundary = 1
   value = 300
 [../]
 [./top_bottom_disp_x]
   type = DirichletBC
   variable = disp_x
   boundary = '1'
   value = 0
 [../]
 [./top_bottom_disp_y]
   type = DirichletBC
   variable = disp_y
   boundary = '1'
   value = 0
 [../]
 [./top_bottom_disp_z]
   type = DirichletBC
   variable = disp_z
   boundary = '1'
   value = 0
 [../]
[]

[Materials]
 [./thermal]
    type = HeatConductionMaterial
    temp = temp
    specific_heat = 1.0
    thermal_conductivity = 1.0
  [../]

  [./elasticity_tensor]
    type = ComputeIsotropicElasticityTensor
    youngs_modulus = 300e6
    poissons_ratio = .3
  [../]

  [./stress]
    type = ComputeFiniteStrainElasticStress
  [../]

  [./thermal_expansion]
    type = ComputeThermalExpansionEigenstrain
    thermal_expansion_coeff = 5e-6
    stress_free_temperature = 300.0
    temperature = temp
    eigenstrain_name = thermal_expansion
  [../]

  [./density]
    type = Density
    density = 10963.0
  [../]
[]

[Executioner]
  type = Transient
  solve_type = 'PJFNK'

  verbose = true
  nl_abs_tol = 1e-10
  start_time = 0.0
  num_steps = 50000

  end_time = 5.1e3
  [./TimeStepper]
    type = IterationAdaptiveDT
    timestep_limiting_function = Fiss_Function
    max_function_change = 3e20
    force_step_every_function_point = true
    dt = 1e2
  [../]
[]

[Postprocessors]
  [./Temperature_of_Block]
    type = ElementAverageValue
    variable = temp
    execute_on = 'initial timestep_end'
  [../]

  [./vonMises]
    type = ElementAverageValue
    variable = vonmises_stress
    execute_on = 'initial timestep_end'
  [../]
[]

[Outputs]
  [./out]
    type = Exodus
    elemental_as_nodal = true
  [../]
  [./console]
    type = Console
    max_rows = 10
  [../]
[]
