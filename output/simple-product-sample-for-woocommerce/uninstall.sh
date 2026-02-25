#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcisps_background_button_color'
wp option delete 'mcisps_text_button_color'
wp option delete 'mcisps_border_color'
wp option delete 'mcisps_border_width'
wp option delete 'mcisps_max_samples'
wp option delete 'mcisps_text_button'
wp option delete 'mcisps_text_button_max'
wp option delete 'mcisps_padding_top'
wp option delete 'mcisps_padding_bottom'
wp option delete 'mcisps_padding_left'
wp option delete 'mcisps_padding_right'
wp option delete 'mcisps_margin_top'
wp option delete 'mcisps_margin_bottom'
wp option delete 'mcisps_margin_left'
wp option delete 'mcisps_margin_right'
wp option delete 'mcisps_force_margin'
wp option delete 'mcisps_default_price'
wp option delete 'mcisps_font_size'
wp option delete 'mcisps_font_weight'
wp option delete 'mcisps_no_variations'
wp option delete 'mcisps_delete_all_data'
wp option delete 'mcisps_selected_categories'
wp option delete 'mcisps_auth_premium'
wp option delete 'mcisps_default_values'
wp option delete 'mcisps_hook_sample_btn'
wp option delete 'mcisps_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lemon_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lemon_instance_id'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sample_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sample_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sample_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sample_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sample_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sample_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sample_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sample_active'"
