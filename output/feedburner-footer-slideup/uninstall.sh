#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fbfs_no_jquery'
wp option delete 'fbfs_no_css'
wp option delete 'fbfs_fburi'
wp option delete 'fbfs_no_close'
wp option delete 'fbfs_no_never_show'
wp option delete 'fbfs_tagline'
wp option delete 'fbfs_def_email'
wp option delete 'fbfs_def_submit'

