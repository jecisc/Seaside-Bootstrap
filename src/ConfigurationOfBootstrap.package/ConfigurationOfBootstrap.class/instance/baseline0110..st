baselines
baseline0110: spec
	<version: '0.11.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/TorstenBergmann/Bootstrap/main/'.		
		spec project: 'Seaside3' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: #'stable';
					repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ].
		spec 
			package: 'Bootstrap-Core' with: [
				spec requires: #('Seaside3' ). ];
			package: 'Bootstrap-Widgets' with: [
				spec requires: #('Bootstrap-Core' ). ];
			package: 'Bootstrap-Tests-Core' with: [
				spec requires: #('Bootstrap-Core' ). ];
			package: 'Bootstrap-Tests-Widgets' with: [
				spec requires: #('Bootstrap-Widgets' ). ];
			package: 'Bootstrap-Jasni';
			package: 'Bootstrap-Examples' with: [
				spec requires: #('Bootstrap-Core' 'Bootstrap-Widgets' 'Bootstrap-Jasny' ). ];
			package: 'Bootstrap-Tests-Jasny' with: [
				spec requires: #('Bootstrap-Jasny' ). ].
		spec 
			group: 'core' with: #('Bootstrap-Core' );
			group: 'widgets' with: #('Bootstrap-Widgets' );
			group: 'tests' with: #('Bootstrap-Tests-Core' 'Bootstrap-Tests-Widgets' 'Bootstrap-Tests-Jasny' );
			group: 'examples' with: #('Bootstrap-Examples' );
			group: 'default' with: #('core' 'widgets' 'tests' 'examples' );
			group: 'jasny' with: #('Bootstrap-Jasny' ). ].
