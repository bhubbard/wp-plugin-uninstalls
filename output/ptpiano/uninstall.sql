-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptpian_record_duration', 'ptpian_note_display', 'ptpian_reverb_enable', 'ptpian_chordtxt_switch', 'ptpian_chordmajor_switch', 'ptpian_chordminor_switch', 'ptpian_chorddim_switch', 'ptpian_chordagu_switch', 'ptpian_bgcolor_control', 'ptpian_toggle_control', 'ptpian_select_control', 'ptpian_theme', 'ptpian_txtcolor_piano', 'ptpian_markcolor_piano', 'ptpian_keylights_color', 'ptpian_txtcolor_control');

