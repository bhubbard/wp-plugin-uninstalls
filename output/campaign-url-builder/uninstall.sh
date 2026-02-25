#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_keep_linkquery'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_keep_linkanchor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_advanced_api'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bitly_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rebrandly_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_domain'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enforce_link_sanitize'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_useronly'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_keep_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_only'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_creator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_metaboxes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_activator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_anonymous'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_styles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_recaptcha'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_recaptcha_site_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_recaptcha_secret_key'"
wp option delete 'reatlat_cub_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

