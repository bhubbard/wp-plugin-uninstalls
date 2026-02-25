#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'koi_url'
wp option delete 'koi_front_token'
wp option delete 'koi_back_token'

