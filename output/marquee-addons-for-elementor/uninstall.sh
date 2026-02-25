#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'deensimc_never_show_notice'
wp option delete 'marquee_addons_widgets'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_deensimc_rate_us_%' OR option_name LIKE '_site_transient_deensimc_rate_us_%'"

