#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_paytm_form_version'
wp option delete 'gf_paytm_form_settings'
wp option delete 'gf_paytm_form_site_name'
wp option delete 'gf_paytm_form_auth_token'
wp option delete 'recently_activated'

