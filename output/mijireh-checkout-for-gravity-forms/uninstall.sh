#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slurp_page_installed'
wp option delete 'gf_mijireh_checkout_settings'
wp option delete 'gf_mijireh_checkout_version'
wp option delete 'gf_mijireh_checkout_configured'
wp option delete 'gf_mijireh_checkout_site_name'
wp option delete 'gf_mijireh_checkout_auth_token'
wp option delete 'recently_activated'

