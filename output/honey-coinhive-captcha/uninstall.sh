#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chc_on_login'
wp option delete 'chc_site_key'
wp option delete 'chc_secret_key'
wp option delete 'chc_hashcount'
wp option delete 'chc_color_option'
wp option delete 'chc_on_comment'
wp option delete 'chc_on_woocommerce'
wp option delete 'chc_exlude_ips'
wp option delete 'chc_exlude_ips_forwarded_for'
wp option delete 'chc_db_version'

# Delete Transients
wp transient delete 'chc-admin-notice-example'

