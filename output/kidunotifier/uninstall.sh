#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixel_key'
wp option delete 'myplugin_activation_date'
wp option delete 'kidu_no_bug'

