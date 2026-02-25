#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sts_dir'
wp option delete 'sts_pause'
wp option delete 'sts_transduration'
wp option delete 'sts_dir_1'
wp option delete 'sts_dir_2'
wp option delete 'sts_dir_3'
wp option delete 'sts_dir_4'
wp option delete 'sts_title'
wp option delete 'sts_title_yes'

