#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'list_ticket_page_id'
wp option delete 'add_ticket_page_id'
wp option delete 'details_ticket_page_id'

