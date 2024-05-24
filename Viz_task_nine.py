df_rec = df[df['Recession']==1]
sns.lineplot(data=df_rec, x='Vehicle_Type', y='unemployment_rate',
             hue='Vehicle_Type', style='Vehicle_Type', markers='o', err_style=None)
plt.ylim(0,850)
plt.legend(loc=(0.05,.3))