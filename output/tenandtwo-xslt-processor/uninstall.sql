-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_xslt_validation_warnings', '_xslt_validation_errors', '_xslt_validation_message', '_xslt_schema_type', '_xslt_schema_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('_xslt_validation_warnings', '_xslt_validation_errors', '_xslt_validation_message', '_xslt_schema_type', '_xslt_schema_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('_xslt_validation_warnings', '_xslt_validation_errors', '_xslt_validation_message', '_xslt_schema_type', '_xslt_schema_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_xslt_validation_warnings', '_xslt_validation_errors', '_xslt_validation_message', '_xslt_schema_type', '_xslt_schema_value');

