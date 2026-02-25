#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipnfp_intl_phone_number_format_active'
wp option delete 'ipnfp_intl_phone_number_format_lookup_active'
wp option delete 'ipnfp_intl_phone_number_format_lookup_ttl'
wp option delete 'ipnfp_intl_phone_number_format_keys'

