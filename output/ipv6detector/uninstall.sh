#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hits_6'
wp option delete 'hits_4'
wp option delete 'whois_url'
wp option delete 'ipv6detector_v4_msg'
wp option delete 'ipv6detector_v6_msg'

