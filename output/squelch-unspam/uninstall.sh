#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lstunspam_last_change'
wp option delete 'lstunspam_showmessage'
wp option delete 'lstunspam_version'
wp option delete 'lstunspam_showfieldupdatemessage'
wp option delete 'lstunspam_fieldsMap'
wp option delete 'lstunspam_field1name'
wp option delete 'lstunspam_field2name'
wp option delete 'lstunspam_field3name'
wp option delete 'lstunspam_field4name'
wp option delete 'lstunspam_field4val'
wp option delete 'lstunspam_default_fields'
wp option delete 'lstunspam_last_change_version'
wp option delete 'lstunspam_ignorewoocommerce'

