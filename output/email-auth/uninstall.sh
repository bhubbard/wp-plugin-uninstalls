#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eauth_spf_server_ip'
wp option delete 'eauth_spf_server_ip_custom'
wp option delete 'eauth_from_address_force'
wp option delete 'eauth_from_address_name'
wp option delete 'eauth_reply_to'
wp option delete 'eauth_reply_to_name'
wp option delete 'eauth_dkim_selector'
wp option delete 'eauth_bounce_address_mode'
wp option delete 'eauth_dkim_domain_custom'
wp option delete 'eauth_from_address'
wp option delete 'eauth_bounce_address'
wp option delete 'eauth_dkim_domain'

# Delete Transients
wp transient delete 'eauth_org_domain_map'

