#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'compilekit_run_on_refresh'
wp option delete 'compilekit_input_css'
wp option delete 'compilekit_output_css'
wp option delete 'compilekit_environment'
wp option delete 'compilekit_worker_threads'
wp option delete 'compilekit_compiler_mode'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_compilekit_compilation_status_%' OR option_name LIKE '_site_transient_compilekit_compilation_status_%'"
wp transient delete 'compilekit_tailwindcss_cli_version'
wp transient delete 'compilekit_standalone_cli_version'

