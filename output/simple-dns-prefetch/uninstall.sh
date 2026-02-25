#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sdp_meta_control'
wp option delete 'sdp_is_dns_disable'
wp option delete 'sdp_prefetch_host_list'

