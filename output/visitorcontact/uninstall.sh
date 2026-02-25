#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'visitor_contact_form_id'
wp option delete 'visitor_contact_sticky_button'
wp option delete 'visitor_contact_publish_page'
wp option delete 'visitor_contact_page_id'

