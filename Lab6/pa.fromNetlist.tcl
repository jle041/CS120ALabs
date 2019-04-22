
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Lab6 -dir "C:/Users/Robert Yee/Desktop/X 120a/Lab6/planAhead_run_3" -part xc3s100ecp132-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Robert Yee/Desktop/X 120a/Lab6/laser_surgery_sys.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Robert Yee/Desktop/X 120a/Lab6} }
set_property target_constrs_file "C:/Users/Robert Yee/Desktop/X 120a/Lab6/share (4)/timer.ucf" [current_fileset -constrset]
add_files [list {C:/Users/Robert Yee/Desktop/X 120a/Lab6/share (4)/timer.ucf}] -fileset [get_property constrset [current_run]]
link_design
