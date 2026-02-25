#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xml_gallery_table_name'
wp option delete 'xml_gallery_db_version'
wp option delete 'xml_gallery_qtd'

