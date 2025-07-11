# Running Cypress Tests
This project uses Ruby Rspec for end-to-end testing.

# Prerequisites
>- Make sure you have the following installed:

>- Ruby installed locally (ruby -v)
>- Check bundler (bundle -v) if not put in terminal (gem install bundler)

# Once repo is cloned in your local follow the next steps
>- cd your-repo
>- bundle install

### Run tests via terminal- Production
> **`$env:TEST_ENV = "prod"  rspec ${your test root}`** — Runs an specifric test via terminal in prod

### Run tests - Stage
> **`$env:TEST_ENV = "stage"  rspec ${your test root}`** — Runs an specifric test via terminal in stage


### Run tests - Via pipelines in github workflows

1. Go to repository in github
2. Click **Actions** section in the top menu
3. In the left menu you will see **Run Cypress Tests** worflow, make click on it
4. You will see **Run workflow** dropdown, click on it
5. Branch **master** will be selected as default in Branch dropdown, but you can select the branch you want to run
6. Below you will see **Suite to run** dropdown, select the suite you want to run, currently options are SMOKEUI or API
7. Then you will see **Environemt to run** dropdown, you can choose between stage or prod
8. Once all of these variables are set, you can click **Run workflow**
9. You can add more suites in **test-suites-[ENV].yml** files, just you need to update **cypress.yml** and add suite name under workflow_dispatch > inputs > suite_name > options following the same syntax