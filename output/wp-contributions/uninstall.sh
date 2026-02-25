#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp-contributions-codex-%' OR option_name LIKE '_site_transient_wp-contributions-codex-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp-contributions-codex-count-%' OR option_name LIKE '_site_transient_wp-contributions-codex-count-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp-contributions-core%' OR option_name LIKE '_site_transient_wp-contributions-core%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp-contributions-core-count-%' OR option_name LIKE '_site_transient_wp-contributions-core-count-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_contributions_plugin_%' OR option_name LIKE '_site_transient_wp_contributions_plugin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_contributions_plugin_author_%' OR option_name LIKE '_site_transient_wp_contributions_plugin_author_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_contributions_theme_%' OR option_name LIKE '_site_transient_wp_contributions_theme_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_contributions_theme_author_%' OR option_name LIKE '_site_transient_wp_contributions_theme_author_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_contributions_themes_%' OR option_name LIKE '_site_transient_wp_contributions_themes_%'"

