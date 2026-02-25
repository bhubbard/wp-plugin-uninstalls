#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipb_install_location'
wp option delete 'ipb_default_group_membership'
wp option delete 'ipb_rounded_profile_pics'

