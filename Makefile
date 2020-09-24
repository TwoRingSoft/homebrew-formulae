init:
	rbenv install --skip-existing
	rbenv exec gem update bundler
	rbenv exec bundle update

release:
	rbenv exec bundle exec bumpr build Formula/$(SPEC).rb --custom $(VERSION) # the component arguemnt 'build' is ignored; it is only put there because bumpr still expects a value there
	git tag $(SPEC)-$(VERSION)
	git push && git push --tags
