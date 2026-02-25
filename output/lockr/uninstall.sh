#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lockr_default_deleted'
wp option delete 'lockr_options'
wp option delete 'lockr_partner'
wp option delete 'lockr_cert'
wp option delete 'lockr_region'
wp option delete 'lockr_encrypt_posts'
wp option delete 'lockr_hash_pass'
wp option delete 'lockr_prod_migrate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_abstract_migrated'"
wp option delete 'give_settings'
wp option delete 'staging_environment'
wp option delete 'lockr_db_version'
wp option delete 'lockr_prod_abstract_migrated'
wp option delete 'lockr_dev_abstract_migrated'

