#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptpian_record_duration'
wp option delete 'ptpian_note_display'
wp option delete 'ptpian_reverb_enable'
wp option delete 'ptpian_chordtxt_switch'
wp option delete 'ptpian_chordmajor_switch'
wp option delete 'ptpian_chordminor_switch'
wp option delete 'ptpian_chorddim_switch'
wp option delete 'ptpian_chordagu_switch'
wp option delete 'ptpian_bgcolor_control'
wp option delete 'ptpian_toggle_control'
wp option delete 'ptpian_select_control'
wp option delete 'ptpian_theme'
wp option delete 'ptpian_txtcolor_piano'
wp option delete 'ptpian_markcolor_piano'
wp option delete 'ptpian_keylights_color'
wp option delete 'ptpian_txtcolor_control'

