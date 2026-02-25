#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cam_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cam_code_%'"
wp option delete 'cam_WhatToColor'

