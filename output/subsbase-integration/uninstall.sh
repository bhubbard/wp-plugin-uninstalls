#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbse_embed_values'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sbis_result_%' OR option_name LIKE '_site_transient_sbis_result_%'"

