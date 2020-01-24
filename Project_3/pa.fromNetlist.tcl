
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Project_3 -dir "C:/Users/louis/Documents/GitHub_Repositories/CECS-301-Computer-Logic-Design-II/Project_3/planAhead_run_2" -part xc7a100tcsg324-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/louis/Documents/GitHub_Repositories/CECS-301-Computer-Logic-Design-II/Project_3/TLD.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/louis/Documents/GitHub_Repositories/CECS-301-Computer-Logic-Design-II/Project_3} }
set_property target_constrs_file "ddr.ucf" [current_fileset -constrset]
add_files [list {ddr.ucf}] -fileset [get_property constrset [current_run]]
link_design
