#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtt_blogname_list'
wp option delete 'rtt_blogname_behavior'
wp option delete 'rtt_blogname_offset'
wp option delete 'rtt_blogname_startdate'
wp option delete 'rtt_blogname_repeat'

