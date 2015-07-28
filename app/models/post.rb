class Post
  attr_accessor :id, :title, :body, :summary, :author, :created_at, :image

  def initialize(hash)
    @id         = hash[:id]
    @title      = hash[:title]
    @body       = hash[:body]
    @summary    = hash[:summary]
    @author     = hash[:author]
    @created_at = hash[:created_at] || Time.now
    @image      = hash[:image]
  end

  def self.all
    unless defined?(@@posts)
      @@posts = [
          Post.new(
            :id         => 1,
            :title      => "Week 1",
            :body       => "Ennui viral Pitchfork Intelligentsia 8-bit. 3 wolf moon cold-pressed Brooklyn, organic synth kogi stumptown ugh Intelligentsia. Roof party Etsy squid synth forage, freegan stumptown banh mi messenger bag skateboard readymade flannel literally. Aesthetic freegan tousled, synth photo booth cronut listicle Tumblr occupy ennui Banksy fap salvia four loko. Hashtag paleo Banksy, you probably haven't heard of them retro Echo Park Shoreditch quinoa banjo. Echo Park tote bag semiotics PBR&B. Stumptown fashion axe literally, before they sold out fingerstache cardigan biodiesel Helvetica cred.  Marfa ennui butcher, roof party American Apparel mustache plaid tattooed listicle. Vice 3 wolf moon sustainable bitters disrupt. Four dollar toast selvage tilde, master cleanse locavore drinking vinegar keffiyeh. Pitchfork Godard PBR&B cold-pressed. Tumblr twee hoodie Etsy flannel sriracha skateboard before they sold out four loko. Quinoa gastropub meggings, art party single-origin coffee scenester lomo cardigan ennui occupy Kickstarter polaroid. Echo Park deep v lo-fi crucifix.  Shoreditch photo booth 90's, meggings twee hoodie mustache health goth tattooed DIY. Kogi literally trust fund McSweeney's. Food truck American Apparel forage meggings, Bushwick quinoa raw denim Pitchfork Williamsburg photo booth. Schlitz Wes Anderson whatever Carles salvia. Organic wayfarers dreamcatcher, freegan small batch umami beard flannel Pitchfork try-hard. Mumblecore artisan polaroid church-key, +1 readymade cornhole Etsy. Cred pop-up next level mlkshk.",
            :summary    => "The first week of my Ironyard Journey",
            :author     => "Maggie Bingham",
            :created_at => (1..10).to_a.sample.months.ago,
            :image      => "1.jpg"
          ),
          Post.new(
            :id         => 2,
            :title      => "Week 2",
            :body       => "Ennui viral Pitchfork Intelligentsia 8-bit. 3 wolf moon cold-pressed Brooklyn, organic synth kogi stumptown ugh Intelligentsia. Roof party Etsy squid synth forage, freegan stumptown banh mi messenger bag skateboard readymade flannel literally. Aesthetic freegan tousled, synth photo booth cronut listicle Tumblr occupy ennui Banksy fap salvia four loko. Hashtag paleo Banksy, you probably haven't heard of them retro Echo Park Shoreditch quinoa banjo. Echo Park tote bag semiotics PBR&B. Stumptown fashion axe literally, before they sold out fingerstache cardigan biodiesel Helvetica cred.  Marfa ennui butcher, roof party American Apparel mustache plaid tattooed listicle. Vice 3 wolf moon sustainable bitters disrupt. Four dollar toast selvage tilde, master cleanse locavore drinking vinegar keffiyeh. Pitchfork Godard PBR&B cold-pressed. Tumblr twee hoodie Etsy flannel sriracha skateboard before they sold out four loko. Quinoa gastropub meggings, art party single-origin coffee scenester lomo cardigan ennui occupy Kickstarter polaroid. Echo Park deep v lo-fi crucifix.  Shoreditch photo booth 90's, meggings twee hoodie mustache health goth tattooed DIY. Kogi literally trust fund McSweeney's. Food truck American Apparel forage meggings, Bushwick quinoa raw denim Pitchfork Williamsburg photo booth. Schlitz Wes Anderson whatever Carles salvia. Organic wayfarers dreamcatcher, freegan small batch umami beard flannel Pitchfork try-hard. Mumblecore artisan polaroid church-key, +1 readymade cornhole Etsy. Cred pop-up next level mlkshk.",            :summary    => "The second week of my Ironyard Journey",
            :author     => "Maggie Bingham",
            :created_at => (1..10).to_a.sample.months.ago,
            :image      => "2.jpg"
          ),
          Post.new(
            :id         => 3,
            :title      => "Week 3",
            :body       => "Ennui viral Pitchfork Intelligentsia 8-bit. 3 wolf moon cold-pressed Brooklyn, organic synth kogi stumptown ugh Intelligentsia. Roof party Etsy squid synth forage, freegan stumptown banh mi messenger bag skateboard readymade flannel literally. Aesthetic freegan tousled, synth photo booth cronut listicle Tumblr occupy ennui Banksy fap salvia four loko. Hashtag paleo Banksy, you probably haven't heard of them retro Echo Park Shoreditch quinoa banjo. Echo Park tote bag semiotics PBR&B. Stumptown fashion axe literally, before they sold out fingerstache cardigan biodiesel Helvetica cred.  Marfa ennui butcher, roof party American Apparel mustache plaid tattooed listicle. Vice 3 wolf moon sustainable bitters disrupt. Four dollar toast selvage tilde, master cleanse locavore drinking vinegar keffiyeh. Pitchfork Godard PBR&B cold-pressed. Tumblr twee hoodie Etsy flannel sriracha skateboard before they sold out four loko. Quinoa gastropub meggings, art party single-origin coffee scenester lomo cardigan ennui occupy Kickstarter polaroid. Echo Park deep v lo-fi crucifix.  Shoreditch photo booth 90's, meggings twee hoodie mustache health goth tattooed DIY. Kogi literally trust fund McSweeney's. Food truck American Apparel forage meggings, Bushwick quinoa raw denim Pitchfork Williamsburg photo booth. Schlitz Wes Anderson whatever Carles salvia. Organic wayfarers dreamcatcher, freegan small batch umami beard flannel Pitchfork try-hard. Mumblecore artisan polaroid church-key, +1 readymade cornhole Etsy. Cred pop-up next level mlkshk.",            :summary    => "The third week of my Ironyard Journey",
            :author     => "Maggie Bingham",
            :created_at => (1..10).to_a.sample.months.ago,
            :image      => "3.jpg"
          ),
          Post.new(
            :id         => 4,
            :title      => "Week 4",
            :body       => "Ennui viral Pitchfork Intelligentsia 8-bit. 3 wolf moon cold-pressed Brooklyn, organic synth kogi stumptown ugh Intelligentsia. Roof party Etsy squid synth forage, freegan stumptown banh mi messenger bag skateboard readymade flannel literally. Aesthetic freegan tousled, synth photo booth cronut listicle Tumblr occupy ennui Banksy fap salvia four loko. Hashtag paleo Banksy, you probably haven't heard of them retro Echo Park Shoreditch quinoa banjo. Echo Park tote bag semiotics PBR&B. Stumptown fashion axe literally, before they sold out fingerstache cardigan biodiesel Helvetica cred.  Marfa ennui butcher, roof party American Apparel mustache plaid tattooed listicle. Vice 3 wolf moon sustainable bitters disrupt. Four dollar toast selvage tilde, master cleanse locavore drinking vinegar keffiyeh. Pitchfork Godard PBR&B cold-pressed. Tumblr twee hoodie Etsy flannel sriracha skateboard before they sold out four loko. Quinoa gastropub meggings, art party single-origin coffee scenester lomo cardigan ennui occupy Kickstarter polaroid. Echo Park deep v lo-fi crucifix.  Shoreditch photo booth 90's, meggings twee hoodie mustache health goth tattooed DIY. Kogi literally trust fund McSweeney's. Food truck American Apparel forage meggings, Bushwick quinoa raw denim Pitchfork Williamsburg photo booth. Schlitz Wes Anderson whatever Carles salvia. Organic wayfarers dreamcatcher, freegan small batch umami beard flannel Pitchfork try-hard. Mumblecore artisan polaroid church-key, +1 readymade cornhole Etsy. Cred pop-up next level mlkshk.",            :summary    => "The fourth week of my Ironyard Journey",
            :author     => "Maggie Bingham",
            :created_at => (1..10).to_a.sample.months.ago,
            :image      => "4.jpg"
          )
      ].sort_by{|post| post.created_at}.reverse!
    end
    @@posts
  end

  def self.find(id)
    all.select{|post| post.id == id}.first
  end

end
