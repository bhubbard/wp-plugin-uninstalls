#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webnns_qc_phone'
wp option delete 'webnns_qc_enabled_call'
wp option delete 'webnns_qc_enabled_viber'
wp option delete 'webnns_qc_enabled_whatsapp'

