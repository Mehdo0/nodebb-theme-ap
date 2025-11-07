<!-- IMPORT partials/account/header.tpl -->

<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">[[user:collection]]</h3>
			</div>
			<div class="card-body collection-grid">
				<!-- BEGIN items -->
				<div class="nft-card">
					<div class="nft-image-wrapper">
						<img src="{items.image}" alt="{items.name}" class="nft-image" />
					</div>
					<div class="nft-details">
						<h4 class="nft-name">{items.name}</h4>
						<p class="nft-description">{items.description}</p>
						<!-- IF items.attributes -->
						<div class="nft-attributes">
							<!-- BEGIN items.attributes -->
							<span class="nft-attribute">
								<span class="attribute-trait">{items.attributes.trait_type}</span>
								<span class="attribute-value">{items.attributes.value}</span>
							</span>
							<!-- END items.attributes -->
						</div>
						<!-- ENDIF items.attributes -->
					</div>
				</div>
				<!-- END items -->
				<!-- IF !items.length -->
				<div class="alert alert-info text-center">
					[[user:no_nfts_in_collection]]
				</div>
				<!-- ENDIF !items.length -->
			</div>
		</div>
	</div>
</div>