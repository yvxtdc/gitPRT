﻿drawing_setup_file $PRO_DIRECTORY\text\prodetail.dtl
format_setup_file $PRO_DIRECTORY\text\prodetail.dtl
pro_unit_length unit_inch
pro_unit_mass unit_pound
search_path_file $CREO_COMMON_FILES\ifx\parts\prolibrary\search.pro
template_boardpart $PRO_DIRECTORY\templates\inlbs_ecad_board_abs.prt
template_designasm $PRO_DIRECTORY\templates\inlbs_asm_design_abs.asm
template_drawing $PRO_DIRECTORY\templates\c_drawing.drw
template_new_ecadasm $PRO_DIRECTORY\templates\inlbs_ecad_asm_abs.asm
template_sheetmetalpart $PRO_DIRECTORY\templates\inlbs_part_sheetmetal_abs.prt
template_solidpart $PRO_DIRECTORY\templates\inlbs_part_solid_abs.prt
todays_date_note_format %Mmm-%dd-%yy
tolerance_standard ansi
weld_ui_standard ansi
