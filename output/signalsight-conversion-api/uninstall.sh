#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'signcoap_p2s_key'
wp option delete 'signcoap_base_url'
wp option delete 'signcoap_events'
wp option delete 'signcoap_pii_data'

