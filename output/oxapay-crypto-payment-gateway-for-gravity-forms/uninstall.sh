#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_oxapay_version'
wp option delete 'gf_oxapay_merchant'
wp option delete 'gf_oxapay_lifetime'
wp option delete 'gf_oxapay_site_name'
wp option delete 'gf_oxapay_auth_token'
wp option delete 'recently_activated'

