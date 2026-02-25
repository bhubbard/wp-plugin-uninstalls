#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hicpo_network_sites'
wp option delete 'hicpo_options'
wp option delete 'hicpo_activation'
wp option delete 'hicpo_ver'

