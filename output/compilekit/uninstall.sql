-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('compilekit_run_on_refresh', 'compilekit_input_css', 'compilekit_output_css', 'compilekit_environment', 'compilekit_worker_threads', 'compilekit_compiler_mode', 'compilekit_tailwindcss_cli_version', 'compilekit_standalone_cli_version');
DELETE FROM wp_options WHERE option_name LIKE 'compilekit_compilation_status_%';

