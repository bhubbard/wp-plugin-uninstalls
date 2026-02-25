#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jf_scs_delete_options'
wp option delete 'jf_scs_enable'
wp option delete 'jf_scs_content_field'
wp option delete 'jf_scs_use_custom_css'
wp option delete 'jf_scs_custom_css_field'
wp option delete 'jf_scs_title_field'
wp option delete 'jf_scs_bgcolor_field'
wp option delete 'jf_scs_textcolor_field'
wp option delete 'jf_scs_topmargin_field'

