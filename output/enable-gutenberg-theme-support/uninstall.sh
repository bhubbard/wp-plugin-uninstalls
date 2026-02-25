#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'egts_option_xl_size'
wp option delete 'egts_option_l_size'
wp option delete 'egts_option_m_size'
wp option delete 'egts_option_s_size'
wp option delete 'egts_option_xs_size'
wp option delete 'egts_option_primary_color'
wp option delete 'egts_option_secondary_color'
wp option delete 'egts_option_tertiary_color'
wp option delete 'egts_option_quaternary_color'
wp option delete 'egts_option_quinary_color'
wp option delete 'egts_select_unit_font_size'
wp option delete 'egts_max-width-gutenberg-editor-page'
wp option delete 'egts_egts_option_xl_size'

