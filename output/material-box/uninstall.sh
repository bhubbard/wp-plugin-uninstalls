#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'materialbox_selector'
wp option delete 'materialbox_class'
wp option delete 'materialbox_in_duration'
wp option delete 'materialbox_out_duration'

