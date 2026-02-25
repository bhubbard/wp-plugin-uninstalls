#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awfs_no_jquery'
wp option delete 'awfs_no_css'
wp option delete 'awfs_hiddenfields'
wp option delete 'awfs_no_close'
wp option delete 'awfs_no_never_show'
wp option delete 'awfs_tagimage'
wp option delete 'awfs_tagline'
wp option delete 'awfs_no_name_field'
wp option delete 'awfs_def_name'
wp option delete 'awfs_def_email'
wp option delete 'awfs_def_submit'
wp option delete 'awfs_formstatstracking'

