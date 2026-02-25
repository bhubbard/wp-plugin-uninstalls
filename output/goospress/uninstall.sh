#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'goosp_lang_code'
wp option delete 'goosp_disp_clos'
wp option delete 'goosp_edit_post'
wp option delete 'goosp_edit_page'
wp option delete 'goosp_edit_cmnt'
wp option delete 'goosp_lang_chkb'

