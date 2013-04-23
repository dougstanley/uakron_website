<aside>
  <section>
    <h1 class="post_header_gradient theme_font">Latest Posts</h1>
    <ul>
      % for post in bf.config.blog.iter_posts_published(5):
      <li><a href="${post.path}">${post.title}</a></li>
      % endfor
    </ul>
  </section>
  <section>
    <h1 class="post_header_gradient theme_font">Latest Github Activity</h1>
    <div id="github_activity">
      <div id="tweets"></div>
      <a href="http://github.com/dougstanley" style="float: right">Github</a>
    </div>
  </section>
</aside>
