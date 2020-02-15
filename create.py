import sys
import os
from github import Github
from dotenv import load_dotenv

load_dotenv()

accessToken = os.getenv("ACCESSTOKEN")

projectDescription = "New Flutter Project"

def create():
    user = Github(accessToken).get_user()
    repo = user.create_repo(sys.argv[1], description = projectDescription)
    print(repo.git_url.replace("git://github.com/", "git@github.com:"))

    
if __name__ == "__main__":
    create()
