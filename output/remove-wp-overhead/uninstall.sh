#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_remove_dashicons'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_rsd_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_wlwmanifest_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_rss_feed_links'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_next_prev_links'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_shortlink'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_wp_generator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_version_numbers_from_style_script'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disable_wp_emojicons'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disable_json_api'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_canonical'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_woo_generator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disable_wp_widgets'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_jquery_migrate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disable_xmlrpc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%remove_block_scripts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disable_gravatar'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%transient_settingsv3' OR option_name LIKE '_site_transient_%transient_settingsv3'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%transient_settings' OR option_name LIKE '_site_transient_%transient_settings'"

