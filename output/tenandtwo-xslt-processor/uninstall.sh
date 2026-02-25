#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xslt_validation_warnings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xslt_validation_warnings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xslt_validation_warnings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xslt_validation_warnings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xslt_validation_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xslt_validation_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xslt_validation_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xslt_validation_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xslt_validation_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xslt_validation_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xslt_validation_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xslt_validation_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xslt_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xslt_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xslt_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xslt_schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xslt_schema_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xslt_schema_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xslt_schema_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xslt_schema_value'"
