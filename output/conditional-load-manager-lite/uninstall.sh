#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pagespsc_conditions'
wp option delete 'pagespsc_mu_plugin_version'
wp option delete 'pagespsc_mu_plugin_failed'
wp option delete 'pagespsc_version'

# Delete Transients
wp transient delete 'pagespsc_admin_error'

