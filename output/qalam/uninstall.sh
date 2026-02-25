#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qalam_client_id'
wp option delete 'qalam_document_id_source'
wp option delete 'qalam_document_source_value'
wp option delete 'qalam_allowed_to_use'

