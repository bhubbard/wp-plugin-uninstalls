#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mca_mail_limit'
wp option delete 'mca_Mail_From_Name'
wp option delete 'mca_Mail_From_Email'
wp option delete 'mca_gravatar_bg'
wp option delete 'mca_gravatar_border'
wp option delete 'mca_Reserve_List'
wp option delete 'mca_db_version'
wp option delete 'MyCommentAuthors'

