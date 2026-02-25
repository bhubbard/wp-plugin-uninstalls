#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acn_ex_author_msg'
wp option delete 'acn_new_author_msg'
wp option delete 'acn_sender_name'
wp option delete 'acn_email_from'
wp option delete 'acn_ex_author_subject'
wp option delete 'acn_new_author_subject'

# Delete Transients
wp transient delete 'acn_error'

