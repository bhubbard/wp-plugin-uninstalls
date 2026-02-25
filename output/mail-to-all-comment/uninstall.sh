#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qw_MTA_default_sub'
wp option delete 'qw_MTA_subject'
wp option delete 'qw_MTA_mail'
wp option delete 'qw_MTA_list'
wp option delete 'qw_MTA_content'
wp option delete 'qw_MTA_post'
wp option delete 'qw_MTA_notsentpost'

