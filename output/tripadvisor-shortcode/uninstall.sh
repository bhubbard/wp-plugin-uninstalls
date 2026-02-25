#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tripadvisor_url'
wp option delete 'tripadvisor_name'
wp option delete 'tripadvisor_id'
wp option delete 'tripadvisor_buff'

