#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oxyXML_active'
wp option delete 'oxyXML_categories'
wp option delete 'oxyXML_path'
wp option delete 'oxyXML_delay'
wp option delete 'oxyXML_count'
wp option delete 'oxyXML_export_excerpt'
wp option delete 'oxyXML_export_content'
wp option delete 'oxyXML_export_date'
wp option delete 'oxyXML_export_category_id'
wp option delete 'oxyXML_export_category_name'
wp option delete 'oxyXML_export_title'
wp option delete 'oxyXML_export_url'

