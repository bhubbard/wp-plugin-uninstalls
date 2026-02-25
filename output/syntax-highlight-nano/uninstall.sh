#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'synano_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_synano_v1_themes_%' OR option_name LIKE '_site_transient_synano_v1_themes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_synano_v1_languages_%' OR option_name LIKE '_site_transient_synano_v1_languages_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_synano_themes_%' OR option_name LIKE '_site_transient_synano_themes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_synano_languages_%' OR option_name LIKE '_site_transient_synano_languages_%'"

