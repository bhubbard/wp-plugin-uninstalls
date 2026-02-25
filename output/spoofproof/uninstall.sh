#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SpoofProof_Login_Override'
wp option delete 'SpoofProof_Stop_JavaScript_Injection'
wp option delete 'SpoofProof_Stop_SQL_Injection'
wp option delete 'SpoofProof_Num_Retries'
wp option delete 'plugin_options'
wp option delete 'SpoofProof_db_version'
wp option delete 'Spoo3fProof_Stop_JavaScript_Injection'
wp option delete 'SpoofProof_plugin_do_activation_redirect'

