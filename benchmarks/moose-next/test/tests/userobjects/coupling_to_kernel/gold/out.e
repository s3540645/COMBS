CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes      $   num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_side_ss3      num_side_ss4      num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_var       num_info           api_version       @¢áH   version       @¢áH   floating_point_word_size            	file_size               title         out.e      maximum_name_length                    
time_whole                            h   	eb_status                             d   eb_prop1               name      ID              h   	ns_status         	                    l   ns_prop1      	         name      ID              |   	ss_status         
                       ss_prop1      
         name      ID                 coordx                            ¬   coordy                            	Ì   eb_names                       $      
ì   ns_names      	                          ss_names      
                          
coor_names                         D         connect1                  	elem_type         QUAD4              \   elem_num_map                    d      ì   elem_ss1                          P   side_ss1                          d   elem_ss2                          x   side_ss2                             elem_ss3                              side_ss3                          ´   elem_ss4                          È   side_ss4                          Ü   node_ns1                          ð   node_ns2                             node_ns3                              node_ns4                          8   vals_nod_var1                                h   name_nod_var                       $      P   info_records                      X      t                                                                 ?É?É        ?Ù?Ù?ã333333?ã333333?é?é?ð      ?ð      ?É        ?Ù?ã333333?é?ð      ?É        ?Ù?ã333333?é?ð      ?É        ?Ù?ã333333?é?ð      ?É        ?Ù?ã333333?é?ð                      ?É?É        ?É        ?É        ?É        ?É?Ù?Ù?Ù?Ù?Ù?Ù?ã333333?ã333333?ã333333?ã333333?ã333333?ã333333?é?é?é?é?é?é?ð      ?ð      ?ð      ?ð      ?ð      ?ð                                                                                                                                                                              bottom                           left                             right                            top                                                                                                                                            	   
      	         
                                          
         
                                                                                                                                                       !            "   !         #   "         $   #                           	   
                                                                                                               
                                                                     	                                        $          !   "   #   $u                                   ####################?ð    W?ð    W?¤záG Ë        ?ÄzáGª42?×
=p¡X?äzáG¬.?ð   # Created by MOOSE #ÄzáG­ë?×
=p¦r?äzáG­H?ð    W?¤záG¤£­        ?ÄzáG®4£?×
=p¤####################záG®        ?ÄzáG®?×
=p£Ûp?äzáG®?ð    W               ### Command Line Arguments ###                                                   -i                                                                               user_data_test.i                                                                                                                                                  ### Input File ###                                                                                                                                                                                                                                 [Mesh]                                                                             action                         = read_mesh                                       file                           = '(no file supplied)'                            isObjectAction                 = 1                                               name                           = Mesh                                            nemesis                        = 0                                               parser_handle                  = 0x7fff6d831008                                  patch_size                     = 40                                              skip_partitioning              = 0                                               type                           = GeneratedMesh                                   unique_id                      = 0                                               _dimension                     = 1                                               dim                            = 2                                               elem_type                      = QUAD4                                           nx                             = 5                                               ny                             = 5                                               nz                             = 1                                               xmax                           = 1                                               xmin                           = 0                                               ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                               uniform_refine                 = 0                                               construct_side_list_from_node_list = 0                                           second_order                   = 0                                             []                                                                                                                                                                [Functions]                                                                        [./exact_fn]                                                                       action                       = add_function                                      isObjectAction               = 1                                                 name                         = Functions/exact_fn                                parser_handle                = 0x7fff6d831008                                    type                         = ParsedFunction                                    unique_id                    = 3                                                 built_by_action              = add_function                                      value                        = x*x                                             [../]                                                                                                                                                             [./forcing_fn]                                                                     action                       = add_function                                      isObjectAction               = 1                                                 name                         = Functions/forcing_fn                              parser_handle                = 0x7fff6d831008                                    type                         = ParsedFunction                                    unique_id                    = 3                                                 built_by_action              = add_function                                      value                        = -2                                              [../]                                                                                                                                                           [Functions]                                                                        action                         = no_action                                       name                           = Functions                                       parser_handle                  = 0x7fff6d831008                                  unique_id                      = 22                                            []                                                                                                                                                                [Variables]                                                                        [./u]                                                                              action                       = add_variable                                      family                       = LAGRANGE                                          initial_condition            = 0                                                 name                         = Variables/u                                       order                        = FIRST                                             parser_handle                = 0x7fff6d831008                                    scaling                      = 1                                                 unique_id                    = 10                                                initial_from_file_timestep   = 2                                               [../]                                                                                                                                                           [Variables]                                                                        action                         = no_action                                       name                           = Variables                                       parser_handle                  = 0x7fff6d831008                                  unique_id                      = 22                                            []                                                                                                                                                                [Kernels]                                                                          [./ffn]                                                                            action                       = add_kernel                                        isObjectAction               = 1                                                 name                         = Kernels/ffn                                       parser_handle                = 0x7fff6d831008                                    type                         = UserDataKernel                                    unique_id                    = 16                                                built_by_action              = add_kernel                                        execute_on                   = residual                                          start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      use_displaced_mesh           = 0                                                 user_data                    = ud                                                variable                     = u                                               [../]                                                                                                                                                             [./diff]                                                                           action                       = add_kernel                                        isObjectAction               = 1                                                 name                         = Kernels/diff                                      parser_handle                = 0x7fff6d831008                                    type                         = Diffusion                                         unique_id                    = 16                                                built_by_action              = add_kernel                                        execute_on                   = residual                                          start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      use_displaced_mesh           = 0                                                 variable                     = u                                               [../]                                                                                                                                                           [Kernels]                                                                          action                         = no_action                                       name                           = Kernels                                         parser_handle                  = 0x7fff6d831008                                  unique_id                      = 22                                            []                                                                                                                                                                [BCs]                                                                              action                         = no_action                                       active                         = all                                             name                           = BCs                                             parser_handle                  = 0x7fff6d831008                                  unique_id                      = 22                                                                                                                               [./all]                                                                            action                       = add_bc                                            isObjectAction               = 1                                                 name                         = BCs/all                                           parser_handle                = 0x7fff6d831008                                    type                         = FunctionDirichletBC                               unique_id                    = 21                                                boundary                     = '0 1 2 3'                                         built_by_action              = add_bc                                            execute_on                   = residual                                          function                     = exact_fn                                          use_displaced_mesh           = 0                                                 variable                     = u                                               [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      action                         = setup_executioner                               isObjectAction                 = 1                                               l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           name                           = Executioner                                     nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               parser_handle                  = 0x7fff6d831008                                  petsc_options                  = -snes_mf_operator                               scheme                         = backward-euler                                  type                           = Steady                                          unique_id                      = 4                                               _mesh                          = 0x7fbfbb824200                                  built_by_action                = setup_executioner                             []                                                                                                                                                                [Output]                                                                           action                         = setup_output                                    elemental_as_nodal             = 0                                               exodus                         = 1                                               exodus_inputfile_output        = 1                                               file_base                      = out                                             gmv                            = 0                                               gnuplot_format                 = ps                                              interval                       = 1                                               iteration_plot_start_time      = 1.79769e+308                                    max_pps_rows_screen            = 0                                               name                           = Output                                          nemesis                        = 0                                               output_displaced               = 0                                               output_initial                 = 0                                               output_solution_history        = 0                                               parser_handle                  = 0x7fff6d831008                                  perf_log                       = 0                                               postprocessor_csv              = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               print_linear_residuals         = 0                                               screen_interval                = 1                                               show_setup_log_early           = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               unique_id                      = 7                                               xda                            = 0                                             []                                                                                                                                                                [setup_subproblem]                                                                 action                         = setup_subproblem                                coord_type                     = XYZ                                             name                           = setup_subproblem                                parser_handle                  = 0x7fff6d831008                                  unique_id                      = 6                                             []                                                                                                                                                                [setup_quadrature]                                                                 action                         = setup_quadrature                                name                           = setup_quadrature                                order                          = AUTO                                            parser_handle                  = 0x7fff6d831008                                  type                           = GAUSS                                           unique_id                      = 32                                            []                                                                                                                                                                [setup_dampers]                                                                    action                         = setup_dampers                                   name                           = setup_dampers                                   parser_handle                  = 0x7fff6d831008                                  unique_id                      = 43                                            []                                                                                                                                                                [no_action]                                                                        action                         = no_action                                       name                           = no_action                                       parser_handle                  = 0x7fff6d831008                                  unique_id                      = 22                                            []                                                                                                                                                                [UserData]                                                                         action                         = no_action                                       name                           = UserData                                        parser_handle                  = 0x7fff6d831008                                  unique_id                      = 22                                            []                                                                                                                                                                [init_problem]                                                                     action                         = init_problem                                    name                           = init_problem                                    parser_handle                  = 0x7fff6d831008                                  unique_id                      = 45                                            []                                                                                                                                                                [copy_nodal_vars]                                                                  action                         = copy_nodal_vars                                 initial_from_file_timestep     = 2                                               name                           = copy_nodal_vars                                 parser_handle                  = 0x7fff6d831008                                  unique_id                      = 11                                            []                                                                                                                                                                [check_integrity]                                                                  action                         = check_integrity                                 name                           = check_integrity                                 parser_handle                  = 0x7fff6d831008                                  unique_id                      = 46                                            []                                                                                                                                                                [UserData]                                                                         [./ud]                                                                             action                       = add_user_data                                     isObjectAction               = 1                                                 name                         = UserData/ud                                       parser_handle                = 0x7fff6d831008                                    type                         = MTUserData                                        unique_id                    = 36                                                scalar                       = 2                                                 vector                       = '9 7 5'                                         [../]                                                                          []                                                                                                                                                                [no_action]                                                                        action                         = no_action                                       name                           = no_action                                       unique_id                      = 22                                            ?ð              ?¤záG®?¤záG§î        ?ÄzáG®?ÄzáG«ã?×
=p£Ûp?×
=p£t?äzáG®?äzáG®ð?ð    W?ð    W?¤záG Ë        ?ÄzáGª42?×
=p¡X?äzáG¬.?ð    W?¤záGI        ?ÄzáG­ë?×
=p¦r?äzáG­H?ð    W?¤záG¤£­        ?ÄzáG®4£?×
=p¤?äzáG®>R?ð    W?¤záG®        ?ÄzáG®?×
=p£Ûp?äzáG®?ð    W