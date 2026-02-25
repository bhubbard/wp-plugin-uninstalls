#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'IR_TextLength'
wp option delete 'IR_SameTime'
wp option delete 'IR_Height'
wp option delete 'IR_type'
wp option delete 'IR_random'
wp option delete 'IR_pluginversion'
wp option delete 'IR_Title'

